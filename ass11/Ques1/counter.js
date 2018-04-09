function modify_counts(val) {
    var counts = document.getElementById('counts').value;
    var new_counts = parseInt(counts,10) + val;
    
    if (new_counts < 0) {
        new_counts = 0;
    }
    
    document.getElementById('counts').value = new_counts;
    return new_counts;
}