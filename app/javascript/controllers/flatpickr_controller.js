import Flatpickr from 'stimulus-flatpickr'
export default class extends Flatpickr {
    connect() {

        this.config = {
            ...this.config,
            inline: true,
            showMonths: 1,
            monthSelectorType: "static",
            // mode: "range"
            // enableTime: false,
            // time_24hr: true
        };

        super.connect();
    }
}
