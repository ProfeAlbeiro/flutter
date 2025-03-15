// index.mjs
import { createServer } from 'node:http';
import express from 'express';
import pool from './src/database/connection.mjs';

// Función para probar la conexión con la base de datos
const testDBConnection = async () => {
  try {
    const [rows] = await pool.query('SELECT 1 AS result');
    console.log('Conexión exitosa a la base de datos:', rows);
  } catch (error) {
    console.error('Error al conectar con la base de datos:', error.message);
    process.exit(1); // Termina el proceso si hay error de conexión
  }
};

const server = createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello World!\n');
});

// starts a simple http server locally on port 3000
server.listen(3000, '127.0.0.1', () => {
  console.log('Listening on 127.0.0.1:3000');
});

// Verificar la conexión a la base de datos antes de iniciar el servidor
testDBConnection();
// run with `node index.mjs`
