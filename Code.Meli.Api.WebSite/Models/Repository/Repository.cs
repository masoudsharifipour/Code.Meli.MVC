using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace Code.Meli.Api.WebSite.Models.Repository
{
    public class Repository<T> : IRepository<T> where T : class
    {
        Models.CodeMeliEntities _db = new CodeMeliEntities();


        public void Add(T entity)
        {
            this._db.Set<T>().Add(entity);
        }

        public IEnumerable<T> GetAll()
        {
            return _db.Set<T>().ToList();
        }

        public T GetById(object id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<T> Query(Expression<Func<T, bool>> filter)
        {
            var query = _db.Set<T>().Where(filter).ToList<T>();
            return query;
        }

        public void Remove(T entity)
        {
            _db.Set<T>().Remove(entity);
        }

       
    }
}