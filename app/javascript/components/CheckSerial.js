import React from "react"
import PropTypes from "prop-types"

class CheckSerial extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
    	serial: '',
    	products: props.products,
    	product: props.products[0].id
	}
  }

  onChange = (e) => {
    this.setState({ [e.target.name]: e.target.value });
  }

  onSubmit = (e) => {
    e.preventDefault(e);
    console.log(this.state.product);
  }

  render () {
  	const { serial, products, product } = this.state;
  	const names = products.map((product) => <option key={product.id} value={product.id}>{product.title}</option>);
    return (
      <React.Fragment>
        <form className="order-form" onSubmit={this.onSubmit}>
	      <div className="form-group">
	      	<label>Enter your serial number</label>
			<input type="text" className="form-control" placeholder="Your serial number" name="serial" value={serial} onChange={this.onChange} required/>
		  </div>
		  <div className="form-group">
		    <label>Select plug-in name</label>
		  	<select className="form-control" name="product" onChange={this.onChange}>
		  	  {names}
		    </select>
		  </div>
		  <button type="submit" className="btn">Check</button>
		  {product}
		</form>
      </React.Fragment>
    );
  }
}

export default CheckSerial