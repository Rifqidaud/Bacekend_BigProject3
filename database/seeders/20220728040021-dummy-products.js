"use strict";

module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      "Products",
      [
        {
          name: "Baju kemeja Kantoran",
          price: 12000,
          image: "/image.png",
          category: "Makanan Ringan",
          description: "Chitato enak",
          quantity: 10,
        },
        {
          name: "Chitato Lite",
          price: 12000,
          image: "/image.png",
          category: "Makanan Ringan",
          description: "Chitato enak",
          quantity: 1000,
        },
      ],
      {}
    );
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.bulkDelete("Products", null, {});
  },
};
