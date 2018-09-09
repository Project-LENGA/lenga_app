import React from 'react';
import ReactDOM from 'react-dom';
import { Sample } from '../../sample/index.js';

const render = () => ReactDOM.render(
  <Sample />,
  document.querySelector('#sample_container')
);

window.onload = render;
