const express = require("express");
const socketIo = require("socket.io");

const app = express();
const server = app.listen("5999", () => {
  console.log("Server listening on port 5999");
});

const io = socketIo(server);
const clients = new Set();

io.on("connection", (socket) => {
  console.log("Client connected!");
  clients.add(socket);

  socket.emit("message", "Hello! How can I assist you today?");
  socket.emit("message", "Type help for a list of available commands.");

  socket.on("message", (message) => {
    console.log(`Received message: ${message}`);

    handleMessage(socket, message);
  });

  socket.on("disconnect", () => {
    console.log("Client disconnected.");
    clients.delete(socket);
  });
});

const handleMessage = (socket, message) => {
  const messageStr = message.toString().trim().toLowerCase();
  switch (true) {
    case messageStr.startsWith("time"):
      socket.emit("message", new Date().toLocaleTimeString());
      break;
    case messageStr.startsWith("date"):
      socket.emit("message", new Date().toDateString().substring(4));
      break;
    case messageStr.startsWith("day"):
      const days = [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
      ];
      const day = days[new Date().getDay()];
      socket.emit("message", day);
      break;
    case messageStr.startsWith("help"):
      socket.emit(
        "message",
        "Available commands: stats, time, date, day, track order, cancel order, refund"
      );
      break;
    case messageStr.startsWith("stats"):
      const activeUsers = clients.size;
      const uptime = process.uptime();
      socket.emit(
        "message",
        `Active users: ${activeUsers}, Uptime: ${uptime} seconds.`
      );
      break;
    case messageStr.startsWith("track order"):
      socket.emit(
        "message",
        "Your order with order ID: ABXPC24293A is on the way"
      );
      break;
    case messageStr.startsWith("cancel order"):
      socket.emit(
        "message",
        "Your order with order ID: ABXPC24293A has been cancelled"
      );
      break;
    case messageStr.startsWith("refund"):
      socket.emit(
        "message",
        "Your refund has been generated and it will get credited to your account within 2-4 business days"
      );
      break;
    default:
      socket.emit(
        "message",
        "I do not understand that command. Type /help for a list of available commands."
      );
      break;
  }
};
