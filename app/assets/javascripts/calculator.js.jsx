/*** @jsx React.DOM */
var APP = React.createClass({
  getInitialState: function() {
    return {
      result: null
    };
  },
  calculate: function() {
    var a = parseFloat($('#a').val());
    var b = parseFloat($('#b').val());
    var c = parseFloat($('#c').val());
    var result = (b*c)/a;

    this.setState({result: result});
  },
  render: function() {
    return (
      <div>
        <div>
          <input type='number' placeholder='[g]' value='100' onChange={this.calculate} id='a' />
          <input type='number' placeholder='[kcal]' onChange={this.calculate} id='b' />
        </div>
        <div>
          <input type='number' placeholder='[g]' onChange={this.calculate} id='c' />
          <input type='number' placeholder='[kcal]' disabled value={this.state.result} />
        </div>
      </div>
    )
  }
})

React.render(<APP />, document.querySelector('#calculator'))
