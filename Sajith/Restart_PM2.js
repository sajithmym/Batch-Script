// This configuration should be saved as `ecosystem.config.js` in the root directory of your project.
// create ecosystem.config.js  file in Project root directory

module.exports = {
    apps : [{
      name: 'NestJSApp',
      script: 'dist/main.js',
      instances: 1,
      autorestart: true,
      watch: true,
      ignore_watch : ["node_modules", "logs", "dist"],
      max_memory_restart: '1G',
      env: {
        NODE_ENV: 'development'
      },
      env_production: {
        NODE_ENV: 'production'
      }
    }],
  };
  
// Run the following command to start the application
// pm2 start ecosystem.config.js --env production