import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

import { getRestApi, anotherFunction } from './services/GetConstants'

class App extends Component {
  render() {
    let restApi = getRestApi();
    let anotherExportVal = anotherFunction();
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Edit <code>src/App.js</code> and save to reload.
          </p>
		  <h3>Shopping Cart</h3>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React aws s3 travis test - pushing tag
          </a>
        </header>
        <div>{restApi}</div>
        <div>{anotherExportVal}</div>
      </div>
    );
  }
}

export default App;
