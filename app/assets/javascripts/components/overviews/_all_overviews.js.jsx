var AllOverviews = React.createClass({
  render() {
    return (
      <div>
        <table className='highlight'>
          <thead>
            <tr>
              <th>Total Income</th>
              <th>Total Expense</th>
            </tr>
          </thead>
          <tbody>
            <tr><td>{this.props.overviews.income}</td><td>{this.props.overviews.expense}</td></tr>
          </tbody>
        </table>
        
      </div>
    )
  }
})
