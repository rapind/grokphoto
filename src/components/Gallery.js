import React from 'react'
import Firebase from 'firebase'
import ReactFireMixin from 'reactfire'

export default React.createClass({
  mixins: [ReactFireMixin],

  propTypes: {
    params: React.PropTypes.object
  },

  getInitialState () {
    return {
      gallery: null
    }
  },

  componentWillMount () {
    this.bindGallery(this.props.params.id)
  },

  componentWillReceiveProps (nextProps) {
    if (this.props.params.id !== nextProps.params.id) {
      this.bindGallery(nextProps.params.id)
    }
  },

  bindGallery (id) {
    const ref = new Firebase(
      `https://togproof.firebaseio.com/galleries/${id}`
    )

    if (this.state.gallery) this.unbind('gallery')
    this.bindAsObject(ref, 'gallery')
  },

  render () {
    const { gallery } = this.state

    if (gallery === null) {
      return <div>Loading...</div>
    }

    return (
      <div>
        <h2>Gallery: {gallery.title}</h2>
      </div>
    )
  }
})
