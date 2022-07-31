"use strict";

module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert(
      "Products",
      [
        {
          name: "Baju kemeja Kantoran",
          price: 12000,
          image:
            "https://ozzakonveksi.com/wp-content/uploads/2020/12/Kemeja-Formal.jpg",
          category: "Kemeja",
          description: "Baju kemeja kantoran HIGH GRADE 100% LEGIT!!!",
          quantity: 10,
        },
        {
          name: "Baju kemeja Kantoran B",
          price: 12000,
          image:
            "https://ozzakonveksi.com/wp-content/uploads/2020/12/Kemeja-Formal.jpg",
          category: "Kemeja",
          description: "Baju kemeja kantoran HIGH GRADE 100% LEGIT!!!",
          quantity: 10,
        },
        {
          name: "Baju kemeja Kantoran C",
          price: 12000,
          image:
            "https://ozzakonveksi.com/wp-content/uploads/2020/12/Kemeja-Formal.jpg",
          category: "Kemeja",
          description: "Baju kemeja kantoran HIGH GRADE 100% LEGIT!!!",
          quantity: 10,
        },
        {
          name: "Baju kemeja Kantoran D",
          price: 12000,
          image:
            "https://ozzakonveksi.com/wp-content/uploads/2020/12/Kemeja-Formal.jpg",
          category: "Kemeja",
          description: "Baju kemeja kantoran HIGH GRADE 100% LEGIT!!!",
          quantity: 10,
        },
      ],
      {}
    );
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.bulkDelete("Products", null, {});
  },
};
