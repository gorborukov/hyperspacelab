import React from "react"

class Message extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
    	message: props.message
	}
  }

  onClick = (e) => {
  }

  render () {
  	const { message } = this.state;
    return (
      <React.Fragment>

      </React.Fragment>
    );
  }
}

export default Message