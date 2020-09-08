import React from 'react';
import {Route, withRouter} from 'react-router-dom'

import ReservationForm from '../reservation/reservation_form_container'
import RatingIndexContainer from '../rating/rating_index_container'
import RatingForm from '../rating/rating_form_container'

class RestaurantShow extends React.Component{
  constructor(props){
    super(props)

    this.scroll = this.scroll.bind(this)
    this.toggleFavorite = this.toggleFavorite.bind(this)
    this.deleteFavorite = this.deleteFavorite.bind(this)
    this.createFavorite = this.createFavorite.bind(this)
    this.getAverageRating = this.getAverageRating.bind(this)
  }

  componentDidMount(){
    // Promise.all([
    //   this.props.fetchRestaurant(this.props.match.params.restaurantId),
    //   this.props.fetchRestaurantRatings(this.props.match.params.restaurantId),
    // ])
    this.props.fetchRestaurant(this.props.match.params.restaurantId)
    this.props.fetchRestaurantRatings(this.props.match.params.restaurantId)
    this.props.requestUserFavorites(this.props.currentUser)
    this.props.fetchUserReservations(this.props.currentUser)
  }

  scroll(el) {
    return () => {
      el.scrollIntoView({
        behavior: 'smooth',
        block: "start"
      });
    };
  }


  toggleFavorite() {
    if (!this.props.currentUser) { return null; }
    const restaurant = this.props.restaurant;    
    if (restaurant.userFavorited) {
      return (
        <div
          onClick={this.deleteFavorite(restaurant.id)}
          className="fav-button-text favorited">
          <i className="fas fa-bookmark"></i>
          Restaurant saved!
        </div>
      );
    } else {
      return (
        <div
          onClick={this.createFavorite()}
          className="fav-button-text">
          <i className="far fa-bookmark"></i>
          Save this restaurant
        </div>
      );
    }
  }


  deleteFavorite(id) {
    return (e) => {
      e.preventDefault();
      this.props.deleteFavorite(id).then(()=>
        this.props.fetchRestaurant(this.props.match.params.restaurantId))
    };
  }

  createFavorite() {
    return (e) => {
      e.preventDefault();
      this.props.createFavorite(this.props.restaurant.id).then(() =>
        this.props.fetchRestaurant(this.props.match.params.restaurantId))
    }
  }

  getAverageRating(){
    const restaurant = this.props.restaurant;
    let sum = 0 
    restaurant.score_arr.forEach( (score) => sum+=score)
    let avgRating; 
    if (sum === 0) {
      avgRating = "No Reviews";
    } else {
      avgRating = (Math.round(sum/restaurant.score_arr.length * 10) / 10).toFixed(1)
    }
    return avgRating
  }

  getChairsScoreRestaurant() {
    const restaurant = this.props.restaurant;
    let sum = 0; 
    restaurant.score_arr.forEach((score) => sum += score)
    let restaurantAvgRating;
    if (sum === 0) {
      restaurantAvgRating = 0 
    }  else {
      restaurantAvgRating = (Math.floor(sum / restaurant.score_arr.length * 10) / 10)
    }

    const restRatingArray = [] 

    for (let i = 0; i < restaurantAvgRating; i++) {
      restRatingArray.push(
        <i key={i} className="fas fa-chair fa-lg chair-filled"></i>
      )
    }

    return restRatingArray
  }


  render (){
    // this is way too long 
    // turn favorites into its own component 
    if (!this.props.restaurant) return null
    
    const restaurant = this.props.restaurant;
    const bImg = {
      backgroundImage: `url(${restaurant.bphoto})`,
    };
    const moneyCheck = restaurant.price > 30 ? "$31 to $50 " : "$30 and under "
    return (
      <div className="single-restaurant-show">
        <div className="rest-show-header">
          <div className="bimg" id="rest-bimg" style={bImg}></div>
          <div className="fav-button">
            {this.toggleFavorite()}
          </div>
        </div>
        <div className="rest-show-content">
          <aside className="rest-right-side">
            <div className="side-content">
              <div className ="restaurant-reservation">
                <ReservationForm reservations={this.props.reservations} currentRestaurant={this.props.restaurant}/>
              </div>
              <div className="google-api">
                <div className="rest-location">
                </div>
                <div className="rest-full-address">
                  <i className="fas fa-map-marker-alt"></i>
                  <span>{restaurant.address} {restaurant.city}, {restaurant.state} {restaurant.zip}</span>
                </div>
              </div>

              <div className="rest-info">
                {/* <div className="rest-info-box">
                  <div className="box-head">Street</div>
                  <div className="box-description">{restaurant.address} </div>
                </div> */}
                <div className="rest-info-box">
                  <div className="box-head"><i className="fas fa-home"></i> Neighborhood</div>
                  <div className="box-description">{restaurant.city}</div>
                </div>
                <div className="rest-info-box">
                  <div className="box-head"><i className="fas fa-phone-alt"></i> Phone Number</div>
                  <div className="box-description">{restaurant.phone_number}</div>
                </div>

                <div className="rest-info-box">
                  <div className="box-head"> <i className="far fa-clock"></i> Hours of operation </div>
                  <div className="box-description">Open: {`${parseInt(restaurant.open_time.slice(11,13)) - 12}:00 pm`}</div>
                  <div className="box-description">Close: {`${parseInt(restaurant.close_time.slice(11, 13)) - 12}:00 pm`}</div>

                </div>

                {/* <div className="rest-info-box">
                  <div className="box-head">Close</div>
                  <div className="box-description">Close :{`${parseInt(restaurant.close_time.slice(11, 13)) - 12}:00 pm`}</div>
                </div> */}

                <div className="rest-info-box">
                  <div className="box-head"><i className="fas fa-utensils"></i> Cuisine</div>
                  <div className="box-description"> {restaurant.cuisine}</div>
                </div>
              </div>
            </div>
          </aside>
          <main className="restaurant-main-content">
            <div id="overview-section">
              <div className="overview-head">
                <nav className="restaurant-nav">
                  <div className="page-nav-links" onClick={this.scroll(this.aboutSection)}> About </div>
                  <div className="page-nav-links" onClick={this.scroll(this.ratingSection)}> Reviews </div>
                </nav>
                <div className="overview-title">
                  <h1>{restaurant.name}</h1>
                  <span className="restaurant-chair"></span>
                </div>
                <div className ="overview-detail">
                    <div className="overview-rr">
                      <div className="rest-ratings"> Rating: {this.getAverageRating()} {this.getChairsScoreRestaurant()} </div>
                    </div>
                    <div className="overview-price">
                      <div><i className="far fa-money-bill-alt"></i> {moneyCheck} </div>
                    </div>
                      <div className="overview-cuisine">
                    <div><i className="fas fa-utensils"></i> {restaurant.cuisine}</div>
                  </div>
                </div>
              </div>
              <div className="overview-description" ref={el => { this.aboutSection = el; }}>
                {restaurant.description}
              </div>
            </div>

            <div id="menu">
              <h3 className="menu-title">Menu</h3>
              <div className="menu-link"><i className="fas fa-external-link-alt"></i> <a href={restaurant.menu_link}>View menu on restaurant's website</a></div>
            </div>

            <div id="ratings" ref={el => { this.ratingSection = el; }}>
              <h3 className="ratings-title">What {this.props.restaurant.score_arr.length} people are saying:</h3>
              <Route path={'/restaurants/:restaurantId'} component={RatingIndexContainer} />
              <div className="restuarant-reviews">
                <Route path={'/restaurants/:restaurantId'} component={RatingForm} />
              </div>
            </div>
          </main>
        </div>
      </div>
    );
  }
}

export default withRouter(RestaurantShow);

