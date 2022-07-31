"use strict";

const uuid = require("uuid");
const bcrypt = require("bcrypt");

module.exports = {
  async up(queryInterface, Sequelize) {
    const password = "12345678";
    await queryInterface.bulkInsert("Users", [
      {
        id: uuid.v4(),
        username: "admin",
        password: bcrypt.hashSync(password, 12),
        type: "admin",
      },
    ]);
  },

  async down(queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
    await queryInterface.bulkDelete("Users", null);
  },
};
