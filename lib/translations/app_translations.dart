import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'pt_BR': {
      // Error messages
      'addressNotFoundError': 'Endereço não encontrado',
      'connectionErrorTitle': 'Ops!!',
      'connectionErrorMessage': 'Estamos com alguns problemas de conexão!!\nEntrando no modo offline! 😉',
      'understoodButton': 'Entendido',
      
      // Success messages
      'userPersistedSuccess': 'Usuário persistido',
      'userRemovedSuccess': 'Usuário removido',
      'successTitle': 'Sucesso!',
      
      // Confirmation dialogs
      'confirmTitle': 'Confirma?',
      'removeUserMessage': 'Deseja remover este usuário da lista de Persistidos?',
      'cancelButton': 'Cancelar',
      'confirmButton': 'Sim',
      
      // Screen titles
      'homeScreenTitle': 'Lista de Usuários',
      'persistedScreenTitle': 'Usuários Persistidos',
      'noUsersLoadedMessage': 'Nenhum usuário carregado ainda...',
      'noPersistedUsersMessage': 'Nenhum usuário persistido.',
      
      // Section titles
      'identitySection': 'Identidade',
      'locationSection': 'Localização',
      'loginInfoSection': 'Login Info',
      
      // Field labels
      'phoneLabel': 'Celular:',
      'emailLabel': 'Email:',
      'ageLabel': 'Idade:',
      'genderLabel': 'Genero:',
      'nationalityLabel': 'Nacionalidade:',
      'birthLabel': 'Nascimento:',
      
      // Gender translations
      'maleGender': 'Masculino',
      'femaleGender': 'Feminino',
      
      // Button labels
      'removeButton': 'Remover',
      'persistButton': 'Persistir',
    },
  };
}
