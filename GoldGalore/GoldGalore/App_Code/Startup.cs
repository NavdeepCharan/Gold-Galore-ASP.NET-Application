using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GoldGalore.Startup))]
namespace GoldGalore
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
