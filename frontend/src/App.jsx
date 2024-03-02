import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';

function App() {
  const [customers, setCustomers] = useState([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [sortBy, setSortBy] = useState('created_at');
  const [sortOrder, setSortOrder] = useState('ASC');
  const [page, setPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);

  useEffect(() => {
    fetchData();
  }, [page, sortBy, sortOrder, searchQuery]);

  const fetchData = async () => {
    try {
      const response = await axios.get(`http://localhost:3000/api/customers?page=${page}&sortBy=${sortBy}&sortOrder=${sortOrder}&search=${searchQuery}`);
      setCustomers(response.data);
      const totalCount = response.data.count ; // Ensure totalCount is valid
      setTotalPages(4);
     
    } catch (error) {
      console.error('Error fetching data:', error);
    }
  };

  const handleSearchChange = (e) => {
    setSearchQuery(e.target.value);
    setPage(1);
  };

  const handleSortChange = (e) => {
    setSortBy(e.target.value);
  };

  const handleOrderChange = (e) => {
    setSortOrder(e.target.value);
  };

  const handlePageChange = (newPage) => {
    setPage(newPage);
  };

  return (
    <div className="App">
      <h1>Customer Records</h1>
      <div>
        <label>Search:</label>
        <input type="text" value={searchQuery} onChange={handleSearchChange} />
      </div>
      <div>
        <label>Sort By:</label>
        <select value={sortBy} onChange={handleSortChange}>
          <option value="sno">Customer ID</option>
          <option value="created_at">Date</option>
          <option value="customer_name">Customer Name</option>
          <option value="age">Age</option>
          <option value="location">Location</option>
        </select>
        <select value={sortOrder} onChange={handleOrderChange}>
          <option value="ASC">Ascending</option>
          <option value="DESC">Descending</option>
        </select>
      </div>
      <table>
        <thead>
          <tr>
          <th>Customer ID</th>
            <th>Customer Name</th>
            <th>Age</th>
            <th>Phone</th>
            <th>Location</th>
            <th>Created At</th>
          </tr>
        </thead>
        <tbody>
          {customers.map((customer) => (
            <tr key={customer.sno}>
                <td>{customer.sno}</td>
              <td>{customer.customer_name}</td>
              <td>{customer.age}</td>
              <td>{customer.phone}</td>
              <td>{customer.location}</td>
              <td>{new Date(customer.created_at).toLocaleString()}</td>
            </tr>
          ))}
        </tbody>
      </table>
      <div className="pagination">
        <button onClick={() => handlePageChange(page - 1)} disabled={page === 1}>Previous</button>
        <span>Page {page} of {totalPages}</span>
        <button onClick={() => handlePageChange(page + 1)} disabled={page === totalPages}>Next</button>
      </div>
    </div>
  );
}

export default App;
