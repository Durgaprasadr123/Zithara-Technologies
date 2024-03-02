const express = require('express');
const bodyParser = require('body-parser');
const { Pool } = require('pg');
const cors = require('cors');

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(bodyParser.json());
app.use(cors());

// Database connection
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'backend',
  password: 'dbo',
  port: 5432, // Default PostgreSQL port
});

// Route to fetch customers
app.get('/api/customers', async (req, res) => {
  try {
    // Extract query parameters from the request
    const { page = 1, limit = 20, sortBy = 'sno', sortOrder = 'ASC', search = '' } = req.query;
    const offset = (page - 1) * limit;

    // Construct the SQL query with parameterized values to prevent SQL injection
    const query = {
      text: `
        SELECT *
        FROM customers
        WHERE customer_name ILIKE $1 OR location ILIKE $2
        ORDER BY ${sortBy} ${sortOrder}
        LIMIT $3 OFFSET $4;
      `,
      values: [`%${search}%`, `%${search}%`, limit, offset]
    };

    // Execute the parameterized query
    const dbRes = await pool.query(query);

    console.log('Query result:', dbRes.rows);
    res.json(dbRes.rows);
  } catch (error) {
    console.error('Error executing query', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
