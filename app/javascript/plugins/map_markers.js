const initMapMarkersOnOver = () => {
  if (document.querySelector('.body-missions-index')) {
  const mapmarkers = document.querySelectorAll('.card-product');
  mapmarkers.forEach( (card) => {
    card.addEventListener('mouseover', () => {
    const missionId = card.dataset.missionId;
    const marker = document.querySelector(`[data-marker-id="${missionId}"]`);
    const cardnew = document.querySelector(`[data-mission-id="${missionId}"]`);
    console.log(marker)
    console.log(cardnew)
      cardnew.style.borderStyle = "groove";
      cardnew.style.borderWidth = "1px";
      cardnew.style.borderColor = "#15353D";
      marker.style.backgroundColor = "#15353D";
      marker.style.color = "white";
    });
    card.addEventListener('mouseout', () => {
    const missionId = card.dataset.missionId;
    const marker = document.querySelector(`[data-marker-id="${missionId}"]`);
    const cardnew = document.querySelector(`[data-mission-id="${missionId}"]`);
    marker.style.backgroundColor = "white";
    marker.style.color = "#15353D";
    cardnew.style.border = "white";
    cardnew.style.borderColor = "white";
    });
  });
  };
}

export { initMapMarkersOnOver };
