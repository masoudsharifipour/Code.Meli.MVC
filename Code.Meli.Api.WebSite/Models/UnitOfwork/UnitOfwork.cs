using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Code.Meli.Api.WebSite.Models.Repository;

namespace Code.Meli.Api.WebSite.Models.UnitOfwork
{
    public class UnitOfwork : IUnitOfwork
    {
        Models.CodeMeliEntities _db = new CodeMeliEntities();
        private  Repository<CodeHistory> _codeHistory;

        public UnitOfwork()
        {

        }
        public IRepository<CodeHistory> HistoryCodeRepository {

            get
            {
                if (this._codeHistory == null)
                {
                    this._codeHistory = new Repository<CodeHistory>();
                }
                return _codeHistory;
            }
        }

        public void SaveChanges()
        {
            var result = this._db.SaveChanges();
        }
    }
}