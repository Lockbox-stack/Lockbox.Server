using System.IO;
using Lockbox.Api;
using Microsoft.AspNetCore.Hosting;

namespace Lockbox.Server
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var host = new WebHostBuilder()
                .UseKestrel()
                .UseContentRoot(Directory.GetCurrentDirectory())
                .UseStartup<LockboxStartup>()
                .UseIISIntegration()
                .Build();

            host.Run();
        }
    }
}
