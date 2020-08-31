import React from "react"
import axios from "axios"
import Captcha from "react-numeric-captcha"
import Loader from "react-loader-spinner"
import "react-loader-spinner/dist/loader/css/react-spinner-loader.css"

class Register extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
    	name: '',
    	email: '',
    	serial: '',
    	products: props.products,
    	slug: props.products[0].gumroad_slug,
    	loading: false,
    	alert: '',
    	captcha: false
	}
  }

  onChange = (e) => {
    this.setState({ [e.target.name]: e.target.value });
  }

  onSubmit = (e) => {
    e.preventDefault(e);
    this.setState({ loading: true });
    
    const { slug, serial, name, email } = this.state;
    axios.get('/api/register', {params: { slug: slug, serial: serial, name: name, email: email }})
    .then((response) => {
    	this.setState({ alert: response.data.message, loading: false });
    })
    .catch((error) => {
      this.setState({ alert: error, loading: false });
    });
  }

  render () {
  	const { name, email, serial, products, product, alert, captcha, loading } = this.state;
  	const names = products.map((product) => <option key={product.id} value={product.gumroad_slug}>{product.title}</option>);
    return (
      <React.Fragment>
        <form className="order-form" onSubmit={this.onSubmit}>
          <div className="form-group">
	      	<label>Full Name</label>
			<input type="text" className="form-control" placeholder="Your name and surname" name="name" value={name} onChange={this.onChange} required/>
		  </div>
          <div className="form-group">
	      	<label>E-mail</label>
			<input type="email" className="form-control" placeholder="Your email" name="email" value={email} onChange={this.onChange} required/>
		  </div>
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
		  <div className="form-group">
		    <label>Enter code from image below</label>
		  	<Captcha onChange={status => this.setState({ captcha: status })} />
		  </div>
		  <button disabled={!captcha} type="submit" className="btn">Register</button>
		  <Loader
        	type="ThreeDots"
        	color="#FFFFFF"
        	height={80}
        	width={80}
        	timeout={3000} 
        	visible={loading}/>
		  <div className="form-alert">{alert}</div>
		</form>
      </React.Fragment>
    );
  }
}

export default Register