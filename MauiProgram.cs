﻿//written by omar  starting 3/20/2025 CS 4485 
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;

namespace BlazorDesktop
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
            builder.Logging.AddDebug();
#endif

         
            builder.Services.AddDbContext<ApplicationDbContext>(options =>
                options.UseMySql("Server=localhost;Port=3306;Database=attendanceproject;User=root;Password=root;",
                ServerVersion.AutoDetect("Server=localhost;Port=3306;Database=attendanceproject;User=root;Password=root;")));

            return builder.Build();
        }
    }
}