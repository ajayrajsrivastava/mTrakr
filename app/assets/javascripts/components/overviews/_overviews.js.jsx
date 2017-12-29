var Overviews = React.createClass({
  getInitialState() {
    return { overviews: [] }
  },

  componentDidMount() {
    $.getJSON('/api/v1/overviews.json', (response) => { this.setState({ overviews: response }) });
    $(document).ready(function() {
    $(".button-collapse").sideNav();
    $('select').material_select();
    $('ul.tabs').tabs();
  });
  },

  handleSubmit(overview) {
    var newState = this.state.overviews.concat(overview);
    this.setState({ overviews: newState })
  },

  render() {
    return (
      <div>
        <h5>Overview</h5>
        <br/>
        <br/>
        <MainOverviews overviews={this.state.overviews} />
      </div>
    )
  }
})
