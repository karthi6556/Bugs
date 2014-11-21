app.controller('ObsessiveCompulsiveSpectrumDisordersController', function($scope, $filter, $log,
  $location, authentication,
  dataFactory) {
  $scope.user = authentication.user.name;$scope.nameOfDoctor = authentication.nameOfDoctor.name;
$scope.nameOfCenter = authentication.nameOfCenter.name;
$scope.patientNumber = authentication.patientNumber.name;
  console.log($scope.user);
  $scope.gridEatingDisorder = {
    options: {
      //  showDeleteButton: true,
      //showEditButton: true,
      editRequested: function(row) {},
      rowDeleted: function(row) {},
      cellFocused: function(row, column) {},
      rowSelected: function(row) {},
      //orderBy: 'age',
      //reverseOrder: false,
      editable: true, // true is the default - set here manually to true to make it easier to bind to in the demo html
      disabled: false,
      perRowEditModeEnabled: true,
      allowMultiSelect: true,
      pageSize: 25,
      pageNum: 0,
      dynamicColumns: true,
      columns: [{
        field: 'symptomName',
        title: 'Eating Disorder',
        // no inputType -> default is text
        //getUrl: function(row) { return '#/' + row.age; },
        disabled: true
      }, {
        field: 'duration',
        title: 'Duration',
        inputType: 'number'
      }, {
        field: 'durationUOM',
        title:' ',
        inputType: 'select',
        options: [{
          value: 0,
          title: 'days'
        }, {
          value: 1,
          title: 'weeks'
        }, {
          value: 2,
          title: 'months'
        }, {
          value: 3,
          title: 'years'
        }],
        formatter: function(item) {
          return item.title;
        },
        select: function(item) {
          return item.value;
        }
      }]
    },
    getData: function() {
      return $scope.dataGridEatingDisorder;
    }
  };

$scope.gridImpulseDyscontrol = {
    options: {
      //  showDeleteButton: true,
      //showEditButton: true,
      editRequested: function(row) {},
      rowDeleted: function(row) {},
      cellFocused: function(row, column) {},
      rowSelected: function(row) {},
      //orderBy: 'age',
      //reverseOrder: false,
      editable: true, // true is the default - set here manually to true to make it easier to bind to in the demo html
      disabled: false,
      perRowEditModeEnabled: true,
      allowMultiSelect: true,
      pageSize: 25,
      pageNum: 0,
      dynamicColumns: true,
      columns: [{
        field: 'symptomName',
        title: 'Impulse Dyscontrol',
        // no inputType -> default is text
        //getUrl: function(row) { return '#/' + row.age; },
        disabled: true
      },/* {
        field: 'duration',
        title: 'Duration',
        inputType: 'number'
      }, */{
        field: 'durationUOM',
        title:' ',
        inputType: 'select',
        options: [{
          value: 0,
          title: 'days'
        }, {
          value: 1,
          title: 'weeks'
        }, {
          value: 2,
          title: 'months'
        }, {
          value: 3,
          title: 'years'
        }],
        formatter: function(item) {
          return item.title;
        },
        select: function(item) {
          return item.value;
        }
      }]
    },
    getData: function() {
      return $scope.dataGridImpulseDyscontrol;
    }
  };

  $scope.gridBodyImageDisturbance = {
    options: {
      //  showDeleteButton: true,
      //showEditButton: true,
      editRequested: function(row) {},
      rowDeleted: function(row) {},
      cellFocused: function(row, column) {},
      rowSelected: function(row) {},
      //orderBy: 'age',
      //reverseOrder: false,
      editable: true, // true is the default - set here manually to true to make it easier to bind to in the demo html
      disabled: false,
      perRowEditModeEnabled: true,
      allowMultiSelect: true,
      pageSize: 25,
      pageNum: 0,
      dynamicColumns: true,
      columns: [{
        field: 'symptomName',
        title: 'Body Image Disturbance',
        // no inputType -> default is text
        //getUrl: function(row) { return '#/' + row.age; },
        disabled: true
      },/* {
        field: 'duration',
        title: 'Duration',
        inputType: 'number'
      }, */{
        field: 'durationUOM',
        title:' ',
        inputType: 'select',
        options: [{
          value: 0,
          title: 'days'
        }, {
          value: 1,
          title: 'weeks'
        }, {
          value: 2,
          title: 'months'
        }, {
          value: 3,
          title: 'years'
        }],
        formatter: function(item) {
          return item.title;
        },
        select: function(item) {
          return item.value;
        }
      }]
    },
    getData: function() {
      return $scope.dataGridBodyImageDisturbance;
    }
  };

  $scope.metaGridConfig = {
    options: {
      editable: true,
      columns: [{
        field: 'field',
        disabled: true
      }, {
        field: 'title'
      }, {
        field: 'inputType',
        inputType: 'select',
        options: ['text', 'number', 'select', 'checkbox', 'date']
      }, {
        field: 'dateFormat',
        inputType: 'text'
      }, {
        field: 'required',
        inputType: 'checkbox'
      }, {
        field: 'disabled',
        inputType: 'checkbox'
      }]
    },
    getData: function() {
      return $scope.metaGridConfig.options.columns;
    }
  };

  getGridEatingDisorder();

  function getGridEatingDisorder() {
    dataFactory.listEatingDisorder($scope.patientNumber)
      .success(function(symps) {
        for (var i = 0; i < symps.length; i++) {
            symps[i].$selected = symps[i].selected;
        }
        $scope.dataGridEatingDisorder = symps;
      });
  }

getGridImpulseDyscontrol();

function getGridImpulseDyscontrol() {
  dataFactory.listImpulseDyscontrol($scope.patientNumber)
    .success(function(symps) {
      for (var i = 0; i < symps.length; i++) {
          symps[i].$selected = symps[i].selected;
      }
      $scope.dataGridImpulseDyscontrol = symps;
    });
}

getGridBodyImageDisturbance();

function getGridBodyImageDisturbance() {
  dataFactory.listBodyImageDisturbance($scope.patientNumber)
    .success(function(symps) {
      for (var i = 0; i < symps.length; i++) {
          symps[i].$selected = symps[i].selected;
      }
      $scope.dataGridBodyImageDisturbance = symps;
    });
}


$scope.returnToSymptomProfile = function() {
    $location.path('/adultSymptomProfile');
  }
  $scope.returnToPatientProfile = function() {
    $location.path('/patientProfileMenu');
  }

    $scope.back = function() {


    $location.path('/obsessiveCompulsiveSymptoms');

  };

  $scope.saveSymptoms = function() {


    for (var i = 0; i < $scope.dataGridBodyImageDisturbance.length; i++) {
      var obj = $scope.dataGridBodyImageDisturbance[i];
      obj.patientNumber = authentication.patientNumber.name;
dataFactory.insertSymptoms(obj)
        .success(function() {}).
      error(function(error) {});
    }

    for (var i = 0; i < $scope.dataGridEatingDisorder.length; i++) {
      var obj = $scope.dataGridEatingDisorder[i];
      obj.patientNumber = authentication.patientNumber.name;
dataFactory.insertSymptoms(obj)
        .success(function() {}).
      error(function(error) {});
    }

    for (var i = 0; i < $scope.dataGridImpulseDyscontrol.length; i++) {
      var obj = $scope.dataGridImpulseDyscontrol[i];
      obj.patientNumber = authentication.patientNumber.name;
dataFactory.insertSymptoms(obj)
        .success(function() {}).
      error(function(error) {});
    }
    $location.path('/traumaRelatedSymptoms');

  };

  // an empty grid: same options, no data.
  $scope.emptyData = [];




});
