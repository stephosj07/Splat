import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#booking_arrival_date", {
    altInput: true,
    plugins: [new rangePlugin({ input: "#booking_departure_date"})]
  });
}

export { initFlatpickr };
