/*** @jsx React.DOM */
var APP = React.createClass({
  render: function() {
    return (
      <h1>Hello world</h1>
    )
  }
})

React.render(<APP />, document.querySelector('.content'))
