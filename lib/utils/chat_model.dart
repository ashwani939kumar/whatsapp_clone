class chatModel {
  chatModel({
    required this.userName,
    required this.message,
    required this.statusTime,
    required this.time,
    required this.date,
    required this.image,
  });
  String userName;
  String message;
  String statusTime;
  String time;
  String date;
  String image;
}

var chatList = [
  chatModel(
      userName: 'Ashwani Kumar',
      message: 'Hi, this is Ashwani Kumar.',
      statusTime: '2 minutes ago',
      time: '10:00',
      date: 'January 10',
      image:
          'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
  chatModel(
      userName: 'Rahul Jit Singh',
      message: 'Hi, this is Rahul Jit Singh.',
      statusTime: '3 minutes ago',
      time: '11:00',
      date: 'March 12',
      image:
          'https://images.unsplash.com/photo-1609010697446-11f2155278f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  chatModel(
      userName: 'Rohit Sharma',
      message: 'Hi, this is Rohit Sharma.',
      statusTime: '4 minutes ago',
      time: '12:00',
      date: 'February 15',
      image:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
  chatModel(
      userName: 'Raghav Sachdeva',
      message: 'Hi, this is Raghav Sachdeva.',
      statusTime: '5 minutes ago',
      time: '01:00',
      date: 'December 14',
      image:
          'https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  chatModel(
      userName: 'Amrita',
      message: 'Hi, this is Amrita.',
      statusTime: '6 minutes ago',
      time: '02:00',
      date: 'March 1',
      image:
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80'),
  chatModel(
      userName: 'Shalini',
      message: 'Hi, this is Shalini.',
      statusTime: '7 minutes ago',
      time: '03:00',
      date: 'March 10',
      image:
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'),
  chatModel(
      userName: 'Sham Lal',
      message: 'Hi, this is Sham Lal.',
      statusTime: '8 minutes ago',
      time: '04:00',
      date: 'July 3',
      image:
          'https://images.unsplash.com/photo-1536321115970-5dfa13356211?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
  chatModel(
      userName: 'Santosh',
      message: 'Hi, this is Santosh.',
      statusTime: '9 minutes ago',
      time: '05:00',
      date: 'June 1',
      image:
          'https://images.unsplash.com/photo-1543132220-3ec99c6094dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
  chatModel(
      userName: 'Vimal',
      message: 'Hi, this is Vimal.',
      statusTime: '10 minutes ago',
      time: '06:00',
      date: 'April 12',
      image:
          'https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  chatModel(
      userName: 'Hritik',
      message: 'Hi, this is Hritik.',
      statusTime: '11 minutes ago',
      time: '07:00',
      date: 'August 12',
      image:
          'https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  chatModel(
      userName: 'Sushmita',
      message: 'Hi, this is Sushmita.',
      statusTime: '12 minutes ago',
      time: '08:00',
      date: 'June 10',
      image:
          'https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  chatModel(
      userName: 'Shobha',
      message: 'Hi, this is Shobha.',
      statusTime: '13 minutes ago',
      time: '09:00',
      date: 'July 11',
      image:
          'https://images.unsplash.com/photo-1579105728744-9d6b14a45389?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=683&q=80'),
];

// class sampleModel {
//   sampleModel({required this.name, required this.job});
//   String name;
//   String job;
// }

// var sampleList = [
//   sampleModel(name: 'Sample Name', job: 'Engineer'),
// ];
