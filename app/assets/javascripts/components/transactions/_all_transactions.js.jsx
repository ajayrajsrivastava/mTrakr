var AllTransactions = React.createClass({
    handleClick(id) {
    $.ajax({
      url: '/api/v1/transactions',
      type: 'DELETE',
      data: { transaction: { id: id } },
      success: (transaction) => {
        this.props.handleDelete(transaction);
      }
    })
  },

  render() {
    var transactions = this.props.transactions.map((transaction) => {
      return ( <tr key={transaction.id}><td>{transaction.category ? transaction.category.name : ''}</td><td>{transaction.date}</td><td>{transaction.amount}</td></tr> )
    });

    return (
      <div>
        <table className='highlight'>
          <thead>
            <tr>
              <th>Category</th>
              <th>Date</th>
              <th>Amount</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            {transactions}
          </tbody>
          </table>
      </div>
    )
  }
})
