import React from 'react'

export const Todo = props =>
  <div className="todos__elem">
    <input
      type="checkbox"
      value={props.done}
      onChange={props.onChange}
    />
    <span className="todos__elem__title">
      { props.title }
    </span>
  </div>;
