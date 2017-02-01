var React = require("react");
var Joke = require("./Joke");

var App = React.createClass({
  getInitialState: function(){
    return {
      jokes: ["Banana", "Mango", "Pineapple", "Pen", "PineapplePen"],
      joke: ""
    }
  },

  handleInputChange: function(e){
    // console.log("joke " + e.target.value);
    this.setState({ joke: e.target.value });
    console.log("joke state: " + this.state.joke);
  },

  handleButtonClick: function(){
    this.setState({ jokes: this.state.jokes.concat(this.state.joke) });
    console.log(this.state.jokes);
  },

  render: function(){
    return(
      <div>
        <div>
          <input type="text" placeholder="Enter your Joke" onChange={this.handleInputChange} />
          <button onClick={this.handleButtonClick}>Joke</button>
        </div><br/>

          {this.state.jokes.map(function(elem, index){
            return (
              <div key={index}>
                <Joke content={elem} />
              </div>
            )
          })}
        </div>
    );
  }
});

module.exports = App;
