@addInvitadoCtrl  = ($scope, $modalInstance, invitado, headingText) ->
    $scope.cancelModal = -> 

        $modalInstance.dismiss('cancel');
        return 

    $scope.saveInvitado = -> 
        $modalInstance.invitado = $scope.invitado;
        $modalInstance.close($scope.invitado);
        return
    

    $scope.invitado = invitado;
    $scope.headingText = headingText;
    return


