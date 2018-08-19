import React from 'react';
import ReactDOM from 'react-dom';
import Routes from '../lengaApp/routes.js';
document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Routes />, document.getElementById('app'),
  )
});
