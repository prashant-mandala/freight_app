# frozen_string_literal: true

# rubocop:disable Layout/LineLength
Ransack.configure do |c|
  c.custom_arrows = {
    up_arrow: '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="14" height="14" viewBox="0 0 1000 1000" xml:space="preserve">
      <g transform="matrix(1.75 0 0 1.6675 500 283.1304)" id="464951">
        <path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; is-custom-font: none; font-file-url: none; fill: rgb(47,143,157); fill-rule: nonzero; opacity: 1;" vector-effect="non-scaling-stroke" transform=" translate(-256, -256.05)" d="M 413.1 327.3 l -1.8 -2.1 l -136 -156.5 c -4.6 -5.3 -11.5 -8.6 -19.2 -8.6 c -7.7 0 -14.6 3.4 -19.2 8.6 L 101 324.9 l -2.3 2.6 C 97 330 96 333 96 336.2 c 0 8.7 7.4 15.8 16.6 15.8 v 0 h 286.8 v 0 c 9.2 0 16.6 -7.1 16.6 -15.8 C 416 332.9 414.9 329.8 413.1 327.3 z" stroke-linecap="round"/>
      </g>
      <g transform="matrix(-1.75 0 0 -1.6675 500 716.8696)" id="606558">
        <path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; is-custom-font: none; font-file-url: none; fill: rgb(187,183,183); fill-rule: nonzero; opacity: 1;" vector-effect="non-scaling-stroke" transform=" translate(-256, -256.05)" d="M 413.1 327.3 l -1.8 -2.1 l -136 -156.5 c -4.6 -5.3 -11.5 -8.6 -19.2 -8.6 c -7.7 0 -14.6 3.4 -19.2 8.6 L 101 324.9 l -2.3 2.6 C 97 330 96 333 96 336.2 c 0 8.7 7.4 15.8 16.6 15.8 v 0 h 286.8 v 0 c 9.2 0 16.6 -7.1 16.6 -15.8 C 416 332.9 414.9 329.8 413.1 327.3 z" stroke-linecap="round"/>
      </g>
    </svg>',
    down_arrow: '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="14" height="14" viewBox="0 0 1000 1000" xml:space="preserve">
      <g transform="matrix(1.75 0 0 1.6675 500 283.1304)" id="464951">
        <path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; is-custom-font: none; font-file-url: none; fill: rgb(187,183,183); fill-rule: nonzero; opacity: 1;" vector-effect="non-scaling-stroke" transform=" translate(-256, -256.05)" d="M 413.1 327.3 l -1.8 -2.1 l -136 -156.5 c -4.6 -5.3 -11.5 -8.6 -19.2 -8.6 c -7.7 0 -14.6 3.4 -19.2 8.6 L 101 324.9 l -2.3 2.6 C 97 330 96 333 96 336.2 c 0 8.7 7.4 15.8 16.6 15.8 v 0 h 286.8 v 0 c 9.2 0 16.6 -7.1 16.6 -15.8 C 416 332.9 414.9 329.8 413.1 327.3 z" stroke-linecap="round"/>
      </g>
      <g transform="matrix(-1.75 0 0 -1.6675 500 716.8696)" id="606558">
        <path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; is-custom-font: none; font-file-url: none; fill: rgb(47,143,157); fill-rule: nonzero; opacity: 1;" vector-effect="non-scaling-stroke" transform=" translate(-256, -256.05)" d="M 413.1 327.3 l -1.8 -2.1 l -136 -156.5 c -4.6 -5.3 -11.5 -8.6 -19.2 -8.6 c -7.7 0 -14.6 3.4 -19.2 8.6 L 101 324.9 l -2.3 2.6 C 97 330 96 333 96 336.2 c 0 8.7 7.4 15.8 16.6 15.8 v 0 h 286.8 v 0 c 9.2 0 16.6 -7.1 16.6 -15.8 C 416 332.9 414.9 329.8 413.1 327.3 z" stroke-linecap="round"/>
      </g>
    </svg>',
    default_arrow: '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="14" height="14" viewBox="0 0 1000 1000" xml:space="preserve">
      <g transform="matrix(1.75 0 0 1.6675 500 283.1304)" id="464951">
        <path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; is-custom-font: none; font-file-url: none; fill: rgb(47,143,157); fill-rule: nonzero; opacity: 1;" vector-effect="non-scaling-stroke" transform=" translate(-256, -256.05)" d="M 413.1 327.3 l -1.8 -2.1 l -136 -156.5 c -4.6 -5.3 -11.5 -8.6 -19.2 -8.6 c -7.7 0 -14.6 3.4 -19.2 8.6 L 101 324.9 l -2.3 2.6 C 97 330 96 333 96 336.2 c 0 8.7 7.4 15.8 16.6 15.8 v 0 h 286.8 v 0 c 9.2 0 16.6 -7.1 16.6 -15.8 C 416 332.9 414.9 329.8 413.1 327.3 z" stroke-linecap="round"/>
      </g>
      <g transform="matrix(-1.75 0 0 -1.6675 500 716.8696)" id="606558">
        <path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; is-custom-font: none; font-file-url: none; fill: rgb(47,143,157); fill-rule: nonzero; opacity: 1;" vector-effect="non-scaling-stroke" transform=" translate(-256, -256.05)" d="M 413.1 327.3 l -1.8 -2.1 l -136 -156.5 c -4.6 -5.3 -11.5 -8.6 -19.2 -8.6 c -7.7 0 -14.6 3.4 -19.2 8.6 L 101 324.9 l -2.3 2.6 C 97 330 96 333 96 336.2 c 0 8.7 7.4 15.8 16.6 15.8 v 0 h 286.8 v 0 c 9.2 0 16.6 -7.1 16.6 -15.8 C 416 332.9 414.9 329.8 413.1 327.3 z" stroke-linecap="round"/>
      </g>
    </svg>'
  }
end
# rubocop:enable Layout/LineLength
