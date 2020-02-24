using Microsoft.Owin;
using Owin;
using System.Web.Mvc;

[assembly: OwinStartupAttribute(typeof(TheSkyLink.Startup))]
namespace TheSkyLink
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            MvcHandler.DisableMvcResponseHeader = true;
        }
    }
}
