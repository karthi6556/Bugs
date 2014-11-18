app.controller('PastTreatmentHistoryController', function($scope, $filter, $log,
  $location, authentication,
  dataFactory) {


  $scope.user = authentication.user.name;
  $scope.nameOfDoctor = authentication.nameOfDoctor.name;
  $scope.nameOfCenter = authentication.nameOfCenter.name;
  $scope.patientNumber = authentication.patientNumber.name;
  console.log($scope.user);
  $scope.gridPastTreatmentHistory = {
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
        field: 'drug',
        title: 'Drug'
        // no inputType -> default is text
        //getUrl: function(row) { return '#/' + row.age; },
        // disabled: true
      }, {
        field: 'duration',
        inputType: 'number',
        title: 'Duration'
      }, {
        field: 'durationUOM',
        title: ' ',
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
      }, {
        field: 'efficacy',
        title: 'Efficacy (Response) ',
        inputType: 'select',
        options: [{
          value: 0,
          title: 'good'
        }, {
          value: 1,
          title: 'partial'
        }, {
          value: 2,
          title: 'no'
        }],
        formatter: function(item) {
          return item.title;
        },
        select: function(item) {
          return item.value;
        }
      }, {
        field: 'sideEffects',
        inputType: 'text',
        title: 'Side Effects'
      }, {
        field: 'allergy',
        title: 'Allergy ',
        inputType: 'select',
        options: [{
          value: 0,
          title: 'yes'
        }, {
          value: 1,
          title: 'no'
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
      return $scope.dataGridPastTreatmentHistory;
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

  getGridPastTreatmentHistory();

  function getGridPastTreatmentHistory() {
    dataFactory.listPastTreatmentHistory($scope.patientNumber)
      .success(function(symps) {
        for (var i = 0; i < symps.length; i++) {
            symps[i].$selected = symps[i].selected;
        }
        $scope.dataGridPastTreatmentHistory = symps;
      });
  }

$scope.returnToSymptomProfile = function() {
    $location.path('/adultSymptomProfile');
  }
  $scope.returnToPatientProfile = function() {
    $location.path('/patientProfileMenu');
  }

    $scope.back = function() {


    $location.path('/treatmentSideEffects');

  };

  $scope.saveSymptoms = function() {


    // for (var i = 0; i < $scope.dataGridPastTreatmentHistory.length; i++) {
    //   var obj = $scope.dataGridPastTreatmentHistory[i];
    //   obj.patientNumber = authentication.patientNumber.name;
    //   dataFactory.insertSymptoms(obj)
    //     .success(function() {}).
    //   error(function(error) {});
    // }
    $location.path('/familyHistoryPsychiatric');

  };

  // an empty grid: same options, no data.
  $scope.emptyData = [];



});
