module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '1ba35e8c0887add788018ca24eefba62'),
  },
  watchIgnoreFiles: [
    './fontend', // Folder
    'C:/Users/Memo/Downloads/home/home/nodejs/strapi-flutter/mobile',
    '/home/viethung/Desktop/Memo/nodejs/strapi-flutter/mobile',
    '/home/viethung/Desktop/Memo/home/nodejs/strapi-flutter/mobile',
    'E:/memo/nodejs/strapi-flutter/mobile'
  ],
});
