// app/assets/javascripts/nested_selects.js
const statusField = document.getElementById('status_field');
const statusSelect = document.getElementById('status_select');
const typeSelect = document.getElementById('type_select');

typeSelect.addEventListener('change', () => {
  const selectedType = typeSelect.value;
  if (selectedType === 'Feature') {
    statusField.style.display = 'block';
    statusSelect.innerHTML = '<option value="New">New</option><option value="Started">Started</option><option value="Completed">Completed</option>';
  } else if (selectedType === 'Bug') {
    statusField.style.display = 'block';
    statusSelect.innerHTML = '<option value="New">New</option><option value="Started">Started</option><option value="Resolved">Resolved</option>';
  } else {
    statusField.style.display = 'none';
    statusSelect.innerHTML = '';
  }
});
