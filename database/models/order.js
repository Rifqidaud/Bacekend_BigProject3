module.exports = (sequelize, Sequelize) => {
  const order = sequelize.define(
    "orders",
    {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      status: {
        type: Sequelize.STRING,
      },
      user_id: {
        type: Sequelize.INTEGER,
      },
      total: {
        type: Sequelize.INTEGER,
      },
      data_product: {
        type: Sequelize.TEXT,
      },
      dataUser:{
        type: Sequelize.TEXT,
      },
    },
    {
      timestamps: false,
    }
  );
  return order;
};
