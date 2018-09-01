import React from 'react';
import ReactDOM from 'react-dom';

class HelpCenter extends React.Component {
  render() {
    return (
      <h2>hello world hinatau</h2>
    );
  }
}

// ReactDOM.render(
//   <HelpCenter />, document.getElementById('help')
// );

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <HelpCenter />,
    document.body.appendChild(document.createElement('div'))
  )
});
