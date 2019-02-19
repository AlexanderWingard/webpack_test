import * as d3 from 'd3';
import './style.css';

d3
    .select("body")
    .append("div")
    .text(new Date().toString())

if (module.hot) {
    module.hot.accept()
}
