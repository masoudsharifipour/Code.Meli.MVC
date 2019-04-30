using Code.Meli.Api.WebSite.Models.UnitOfwork;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace Code.Meli.Api.WebSite.Models.Service
{
    public class Service : IService
    {
        private readonly IUnitOfwork _uow;

        public Service(IUnitOfwork uow)
        {
            this._uow = uow;
        }

        public Service()
        {
            this._uow = new UnitOfwork.UnitOfwork();
        }

        public void Add(CodeHistory codeHistory)
        {
            this._uow.HistoryCodeRepository.Add(codeHistory);
            this._uow.SaveChanges();
        }

        public bool IsValidIranianNationalCode(string value)
        {
            if (!Regex.IsMatch(value, @"^\d{10}$"))
                return false;

            var check = Convert.ToInt32(value.Substring(9, 1));
            var sum = Enumerable.Range(0, 9)
                .Select(x => Convert.ToInt32(value.Substring(x, 1)) * (10 - x))
                .Sum() % 11;
            this.Add(new CodeHistory
            {
                Code = value,
                CreatedDateTime = DateTime.Now,
                Ip = Helper.IpAdress.GetLocalIPAddress(),
            });
            return (sum < 2 && check == sum) || (sum >= 2 && check + sum == 11);

        }
    }
}