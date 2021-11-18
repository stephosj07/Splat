import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('camping_spot_location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
