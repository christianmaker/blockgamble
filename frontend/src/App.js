import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Web3 from 'web3'

class App extends Component {
	componentWillMount() {
		this.loadBlockchainData()
	}

	async loadBlockchainData() {
		const web3 =new Web3(Web3.givenProvider || "http://localhost:7545")
		const accounts = await web3.eth.getAccounts()
		console.log(accounts)
		this.setState({account: accounts[0]})
	}

	constructor(props) {
		super(props)
		this.state = {account: ''}
	}

	render() {
		return (
			<div className="container">
				<h1>Hallo</h1>
				<p>Your Account: {this.state.account}</p>
			</div>
		);
	}
}

export default App;
