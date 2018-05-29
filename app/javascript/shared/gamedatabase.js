var counter = 0;
do {



fetch(`https://api-endpoint.igdb.com/games/${counter}`, {
  method: "GET",
  headers: {
    "user-key": "42a1aefdff269b595c14ef6178c62244",
    "Accept": "application/json"
  },
})
  .then(response => response.json())
  .then((data) => {
    data.forEach do {

    }
  });
  counter++;
}
  while (counter < 10);
