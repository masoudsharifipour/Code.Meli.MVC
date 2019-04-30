using Code.Meli.Api.WebSite.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Code.Meli.Api.WebSite.Models.UnitOfwork
{
    public interface IUnitOfwork
    {
        IRepository<CodeHistory> HistoryCodeRepository { get; }
        void SaveChanges();


    }
}