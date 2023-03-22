// const fs = require("fs")
module.exports = {
    devServer: {
        proxy: {
          '/v1': {
            target: 'https://api.openai.com',
            changeOrigin: true,
            pathRewrite: {
              '^/v1': ''
            }
          }
        },
        https: {
            rejectUnauthorized: false
        }
        // key: fs.readFileSync('./key.pem'),
        // cert: fs.readFileSync('./cert.pem'),
    }
}