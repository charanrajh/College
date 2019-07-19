window.addEventListener('click', function scheduleClass () {


    var myBooks = [ {"classRoomId":4,"dayOfTheWeek":"Thursday","startTime":"04:00:00 PM","endTime":"06:00:00 PM","facultyName":"Manikandan"},
    {"classRoomId":1,"dayOfTheWeek":"Tuesday","startTime":"02:00:00 PM","endTime":"04:00:00 PM","facultyName":"Shubham"},{"classRoomId":1,"dayOfTheWeek":"Thursday","startTime":"01:00:00 PM","endTime":"03:00:00 PM","facultyName":"Shubham"}

   
    ]

    var col = [];
    for (var i = 0; i < myBooks.length; i++) {
        for (var key in myBooks[i]) {
            if (col.indexOf(key) === -1) {
                col.push(key);
            }
        }
    }

    var table = document.createElement("table");


    var tr = table.insertRow(-1);
var arr=['Classroom','Day','Faculty','Subject','Start Time','End Time']
    for (var i = 0; i < arr.length; i++) {
        var th = document.createElement("th");
        th.innerHTML = arr[i];
        tr.appendChild(th);
    }

    for (var i = 0; i < myBooks.length; i++) {

        tr = table.insertRow(-1);

        for (var j = 0; j < col.length; j++) {
            var tabCell = tr.insertCell(-1);
            tabCell.innerHTML = myBooks[i][col[j]];
        }
    }


    var divContainer = document.getElementById("showData");
    divContainer.innerHTML = "";
    divContainer.appendChild(table);
});