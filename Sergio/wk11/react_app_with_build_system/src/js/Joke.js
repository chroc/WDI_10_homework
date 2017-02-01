var React = require("react");

var Joke = React.createClass({
  getInitialState: function(){
    return {
      content: this.props.content
    }
  },
  handleJokeChange: function(){
    //..
  },
  render: function(){
    var content = this.state.content;
    return (
      <textarea value={content} onChange=this.handleJokeChange></textarea>
    );
  }
});

module.exports = Joke;
