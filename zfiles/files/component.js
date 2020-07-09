module.exports = (string) => `
import React from 'react'
import { connect } from 'react-redux'
import { PropTypes } from 'prop-types'

const ${string} = (props) => (
  <div onClick={() => props.go(props.message)}>{props.message}</div>
)

const mapStateToProps = state => ({
  stuff: state,
  message: "Hello ${string}",
})

const mapDispatchToProps = (dispatch) => ({
  go: (e) => {
    console.log(e)
  },
})

${string}.propTypes = {
  stuff: PropTypes.object.isRequired,
  go: PropTypes.func.isRequired,
  message: PropTypes.string,
}

${string}.defaultProps = {
  message: 'default message',
}

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(${string})
`
