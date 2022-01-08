"use strict";

module.exports = {
  /**
   * An asynchronous register function that runs before
   * your application is initialized.
   *
   * This gives you an opportunity to extend code.
   */
  register(/*{ strapi }*/) {},

  /**
   * An asynchronous bootstrap function that runs before
   * your application gets started.
   *
   * This gives you an opportunity to set up your data model,
   * run jobs, or perform some special logic.
   */
  bootstrap(/*{ strapi }*/) {
    // var io = require("socket.io")(strapi.server, {
    //   cors: {
    //     origin: "http://localhost:3000",
    //     methods: ["GET", "POST"],
    //     // allowedHeaders: ["my-custom-header"],
    //     credentials: true,
    //   },
    // });

    // io.on("connection", function (socket) {
    //   socket.on("join", ({ username, room }) => {
    //     console.log("user connected");
    //     console.log("username is ", username);
    //     console.log("room is...", room);
    //   });
    // });
  },
};
