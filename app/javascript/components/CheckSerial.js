import React from "react"
import PropTypes from "prop-types"

class CheckSerial extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
    	serial: '' 
	}
  }

  onChange = (e) => {
    this.setState({ [e.target.name]: e.target.value });
  }

  render () {
  	const { serial } = this.state;
    return (
      <React.Fragment>
        <form className="order-form" onSubmit={this.onSubmit}>
	      <div className="form-group">
	      	<label>Enter your serial number</label>
			<input type="text" className="form-control" placeholder="Your serial number" name="serial" value={serial} onChange={this.onChange} required/>
		  </div>
		  <button type="submit" className="btn">Check</button>
		</form>
      </React.Fragment>
    );
  }
}

export default CheckSerial