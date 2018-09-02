import React from 'react';
import ReactDOM from 'react-dom';

class HelpCenter extends React.Component {
  render() {
    return (
      <h2>hello world hinatau</h2>
    );
  }
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <HelpCenter />, document.getElementById('help')
  );
});
