import React from 'react';

export class TodoForm extends React.Component {
  constructor (props) {
    super(props);
    this.input = React.createRef();
  }

  handleSubmit (e) {
    e.preventDefault();
    const { value } = this.input.current;
    this.props.onSubmit(value);
    this.input.current.value = '';
  }

  render () {
    return (
      <div className="todos__form">
        <input
          ref={this.input}
          type="text"
        />
        <button
          className="todos__form__submit"
          onClick={e => this.handleSubmit(e)}
        >
          create
        </button>
      </div>
    );
  }
}
