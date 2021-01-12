let api = axios.create({
  baseURL: "/api"
})

async function loadWeather() {
  let res = await api.get("/weatherforecast")
  let weather = res.data[0]
  document.getElementById('weather').innerText = `Temp: ${weather.temperatureC} Celcius | Summary: ${weather.summary}`
}

loadWeather()