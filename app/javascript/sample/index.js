import React from 'react';
import axios from 'axios';
import { Todo } from './Todo.js';
import { TodoForm } from './TodoForm.js';

import './style.scss';

export class Sample extends React.Component {
  constructor (props) {
    super(props);
    this.state = {
      todos: []
    }
    this.handleCreate = this.handleCreate.bind(this);
  }

  componentDidMount () {
    axios({
      method: 'GET',
      url: 'http://localhost:3000/sample/todos/get_all_todos',
      params: { }
    })
      .then(res => {
        this.setState({ todos: res.data.todos })
      })
      .catch (err => console.error(err));
  }

  handleDone (idx) {
    const newTodos = this.state.todos.map((d,i) => {
      if (i === idx) {
        d.done = !d.done;
      }
      return d;
    });
    this.setState({ todos: newTodos });
  }

  handleCreate (title) {
    const todos = [
      {
        title: title,
        done: false
      },
      ...this.state.todos
    ];
    this.setState({ todos });
  }

  render () {
    return (
      <div className="todos">

        <h1>Todos Sample</h1>

        <div className="todos__list">
          {this.state.todos.map((d,i) => (
            <Todo
              key={i}
              done={d.done}
              title={d.title}
              onChange={e => this.handleDone(i)}
            />
          ))}
        </div>

        <TodoForm
          onSubmit={this.handleCreate}
        />

      </div>
    );
  }
}
