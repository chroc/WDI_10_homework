var React = require("react");

var TweetBox = React.createClass({
  getInitialState: function(){
    // provide initial values
    return {
      content: "",
      maxTweet: this.props.maxTweetLength // grab the properties from the parent (props)
    }
  },
  handleChange: function(e){
    this.setState({ content: e.target.value });
  },
  render: function(){
    // var maxTweet = this.state.mTL;
    // var content = this.state.content;
    var { content, maxTweet } = this.state; // does exactly the same as two above
    var isDisabled = content.length <= 0 || content.length > maxTweet;
    var spanStyle = content.length > maxTweet ? { color: "red" } : {};
    var spanClass = content.length > maxTweet ? "warning" : ""; // this line is the same as an if-else statement
    return (
      <div>
        <textarea onChange={this.handleChange}>
        </textarea>
        <button disabled={isDisabled}>tweet</button>
        <span className={spanClass}>
          {maxTweet - content.length}
        </span>
      </div>
    )
  }
});

module.exports = TweetBox;
