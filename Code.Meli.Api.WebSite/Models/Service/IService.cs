using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Code.Meli.Api.WebSite.Models.Service
{
    public interface IService
    {
        bool IsValidIranianNationalCode(string value);

        void Add(CodeHistory codeHistory);
    }
}