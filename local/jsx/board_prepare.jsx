class Interaction extends React.Component {
  constructor(props) {
    super(props);

    this.initialFocus = null;
  }

  componentDidMount() {
    if( this.initialFocus!==null ) {
      this.initialFocus.focusVisible();
    }
  }

  handleButtonOk = () => {
    const tMsg = {
      button: 'ok'
    };
    fnSend(tMsg);
  };

  handleButtonCancel = () => {
    const tMsg = {
      button: 'cancel'
    };
    fnSend(tMsg);
  };

  render() {
    return (
      <div>
        <div style={{display: 'flex', width: '100%'}}>
          <Typography variant="h3" gutterBottom>Bereite das Board vor</Typography>
          <Typography variant="subtitle1" gutterBottom>
            <ol>
              <li>Schalte den Power für das Board aus</li>
              <li>Stecke das USB Kabel in die USB Buchse des Boards</li>
              <li>Stecke die beiden Ethernet Kabel in CH0 und CH1 des Boards</li>
              <li>Stelle alle DIP Schalter auf dem Board auf OFF</li>
              <li>Schalte den Power für das Board ein</li>
            </ol>
          </Typography>
        </div>

        <div style={{width: '100%', textAlign: 'center', verticalAlign: 'middle', padding: '2em'}}>
          <div style={{display: 'inline', paddingLeft: '2em', paddingRight: '2em'}}>
            <Button variant="contained" color="primary" onClick={this.handleButtonOk} autoFocus action={actions => { this.initialFocus = actions; }}>
              <SvgIcon>
                <path fill="none" d="M0 0h24v24H0V0zm0 0h24v24H0V0z"/><path d="M16.59 7.58L10 14.17l-3.59-3.58L5 12l5 5 8-8zM12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8z"/>
              </SvgIcon>
              OK
            </Button>
          </div>
          <div style={{display: 'inline', paddingLeft: '2em', paddingRight: '2em'}}>
            <Button variant="contained" color="secondary" onClick={this.handleButtonCancel}>
              <SvgIcon>
                <path d="M0 0h24v24H0z" fill="none"/><path d="M14.59 8L12 10.59 9.41 8 8 9.41 10.59 12 8 14.59 9.41 16 12 13.41 14.59 16 16 14.59 13.41 12 16 9.41 14.59 8zM12 2C6.47 2 2 6.47 2 12s4.47 10 10 10 10-4.47 10-10S17.53 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8z"/>
              </SvgIcon>
              Abbrechen
            </Button>
          </div>
        </div>
      </div>
    );
  }
}
